import * as React from 'react';
//typescript 多写点什么？
export const MemberHeader:React.FC<{}> = ({}) => {
    return(
        <tr>
            <th>Avatar</th>
            <th>ID</th>
            <th>Name</th>
        </tr>
    )
}