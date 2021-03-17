import React,{useEffect,useState} from 'react';
// import Movies from '../data.js';
import axios from 'axios';
import Movie from '../components/Movie';
import './movie.css';
// react hooks 所有的组件都用函数
// useState 代替类里设置状态
const HookMovie=()=>{
    // movies class this.state setMovies this.setState
    const [movies,setMovies]=useState([]);
    const [loading,setLoading]=useState(true);
    // movies 在哪里？
    useEffect(()=>{
        // 请求 真正的接口来的时代
        // url json
        // 有什么不好的地方？  axios
        // ./data.js 写不成 向一个url 去请求数据
        // 前后端是分离的
        // axios 请求 假装一个 mockjs
        // mockjs 提供假数据 还可以给我们提供一个访问的url
        setTimeout(()=>{
            axios
                .get('/movies')
                .then(res=>{
                // console.log(res);
                setMovies(res.data.movies)
                setLoading(false)
            })
            // setMovies(Movies)
            
        },3000)
    },[])
    return(
        <div>HookMovie
            {loading?<div>Loading...</div>:<div>
                {movies.map((movie,index)=>(
                <Movie key={movie.imdbID} movie={movie}/>
                ))}
            {movies.length}</div>}
        </div>
    )
}

export default HookMovie;