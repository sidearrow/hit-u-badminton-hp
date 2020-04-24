import * as React from "react"
import Layout from "../components/Layout"
import pageMetadata from "../pageMetaData";
import TwitterTimeline from "../components/TwitterTImeline";
import logo from '../assets/img/logo.svg';

const IndexPage: React.FC = () => (
  <Layout pageMetadata={pageMetadata.index}>
    <div className="section">
      <div className="has-text-centered content">
        <img src={logo} />
      </div>
      <div className="has-text-centered content">
        <div className="is-size-2">一橋大学</div>
        <div className="is-size-2">バドミントン部</div>
        <div>Hitotsubashi University Badminton Club was established in 1952.</div>
      </div>
    </div>
    <div className="section">
      <h2>Twitter</h2>
        <TwitterTimeline />
    </div>
  </Layout>
);

export default IndexPage
