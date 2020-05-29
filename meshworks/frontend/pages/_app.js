import 'semantic-ui-less/semantic.less'
import './styles.css'

import Navigator from '../components/Navigator';

function MyApp({ Component, pageProps }) {
  return (
    <div>
      <Navigator />
      <div style={{ marginTop: '7em' }}>
        <Component {...pageProps} />
      </ div>
    </div>
  )
}

export default MyApp
