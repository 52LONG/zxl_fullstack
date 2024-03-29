import React, { useState, useEffect, Fragment, useReducer } from 'react';
import axios from 'axios';

const dataFetchReducer = (state, action) => {
  switch(action.type) {
    case 'FETCH_INIT':    // 请求开始后
      return {
        ...state,
        isLoading: true,
        isError: false
      };
    case 'FETCH_SUCCESS':
      return {
        ...state,
        isLoading: false,
        isError: false,
        data: action.payload
      }
    case 'FETCH_FAILURE':
      return {
        ...state,
        isLoading: false,
        isError: true
      }
  }
}

const useDataApi = (initialUrl, initialData) => {
  const [url, setUrl] = useState(initialUrl);
  const [state, dispatch] = useReducer(dataFetchReducer, {
    isLoading: false,
    isError: false,
    data: initialData
  })
  useEffect(() => {
    let didCancel = false;
    const fetchData = async () => {
      dispatch({type: 'FETCH_INIT'});

      try {
        const result = await axios(url);
        if (!didCancel) {
          dispatch({type: 'FETCH_SUCCESS', payload: result.data})
        }
      } catch(error) {
        if (!didCancel) {
          dispatch({ type: 'FETCH_FAILURE' })
        }
      }
    }
    fetchData();
    return () => {
      didCancel = true;
    }
  }, [url])

  return [state, setUrl];
}

const App = () => {
  const [query, setQuery] = useState('redux');
  const [{data, isLoading, isError}, doFetch] = useDataApi(
    'https://hn.algolia.com/api/v1/search?query=redux',
    {hits: []}
  )

  return (
    <Fragment>
      <form
        onSubmit={event => {
          doFetch(
            `http://hn.algolia.com/api/v1/search?query=${query}`,
          );
 
          event.preventDefault();
        }}
      >
        <input
          type="text"
          value={query}
          onChange={event => setQuery(event.target.value)
          }
        />
        <button type="submit">Search</button>
      </form>
 
      {isError && <div>Something went wrong ...</div>}
 
      {isLoading ? (
        <div>Loading ...</div>
      ) : (
        <ul>
          {data.hits.map(item => (
            <li key={item.objectID}>
              <a href={item.url}>{item.title}</a>
            </li>
          ))}
        </ul>
      )}
    </Fragment>
  )
}



// function App() {
//   const [data,setData] = useState({hits:[]})
//   const [query,setQuery] = useState('redux')
//   const [url,setUrl] = useState('https://hn.algolia.com/api/v1/search?query=redux')
//   const [isLoading,setIsLoading] = useState(true)
//   const [isError,setIsError] = useState(false)
//   const [state,dispatch] = useReducer(dataFetchReducer,{
//     isLoading:false,
//     isError:false,
//     data:initialData
//   })
//   useEffect(()=>{
//     const fetchData = async()=>{
//       setIsError(false)
//       setIsLoading(true);
//       try{
//         var result = await axios(url)
//       }catch(e){
//         setIsError(true)
//       }  
//       setIsLoading(false);
//       setData(result.data)
//   }
//   fetchData()

//     // return()=>{

//     // }
//   },[url])
//   //为什么要加query 
//   return (
//     <Fragment>
//       <form onSubmit={(event)=>{
//         event.preventDefault();
//         setUrl(`https://hn.algolia.com/api/v1/search?query=${query}`)
//       }}>
//     <input type="text" 
//       value={query}
//       onChange={event=>setQuery(event.target.value)}/>
//       <button type="submit">Search</button>
//       </form>
//       {isError&&<div>Something went Wrong...</div>}
//       {isLoading?(<div>Loading...</div>):
//       <ul>
//         {data.hits.map(item=>(
//           <li key={item.objectID}>
//             <a href={item.url}>{item.title}</a>
//           </li>
//         ))}
//       </ul>
//       }

//       </Fragment>
//   );
// }

export default App;
