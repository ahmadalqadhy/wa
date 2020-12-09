import React from "react";
import PostsContainer from './posts/posts_container'
import PostFormContainer from './post_form/post_form_container'
import Home from "./home/home"
import { Route, Switch} from 'react-router-dom'
import LegislatorFormContainer from "./home/legislator_form_container"
import ConstituentFormContainer from "./home/constituent_form_container"
import PostShowContainer from "./posts/post_show_container"

const App = () => (
    <div className="cheese">
        <Switch>
            <Route exact path="/legislator" component={LegislatorFormContainer} />
            <Route exact path="/constituent" component={ConstituentFormContainer} />
            <Route exact path="/home" component={Home}/>
            <Route exact path="/posts" component={PostsContainer}/>
            <Route exact path="/create-post" component={PostFormContainer}/>
            <Route exact path="/posts/:postid" component={PostShowContainer}/>
        </Switch>
    </div>
);

export default App;