import React, { useReducer } from 'react'

const McqContext = React.createContext()

function reducer(state, action) {
    switch (action.Type) {
        case 'Changed':
            return state.map((tp) => {
                if (tp.name === action.topic) {
                    tp.checked = !tp.checked
                }
                return tp
            })
        default:
            return state
    }
}

const initialVal = [
    { name: 'topic1', checked: false },
    { name: 'topic2', checked: false },
    { name: 'topic3', checked: false },
    { name: 'topic4', checked: false },
    { name: 'topic5', checked: false },
    { name: 'topic6', checked: false },
    { name: 'topic7', checked: false },
    { name: 'topic8', checked: false },
]

export const McqProvider = ({ children }) => {
    const [Mcqs, dispatch] = useReducer(reducer, initialVal);

    const onCheck = (item) => {
        dispatch({ Type: 'Changed', topic: item })
    }

    return (
        <McqContext.Provider value={{ Mcqs, onCheck }}>
            {children}
        </McqContext.Provider>
    )
}

export default McqContext