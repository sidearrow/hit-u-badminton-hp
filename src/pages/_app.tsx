import React, { useEffect } from 'react';
import type { AppProps } from 'next/app';
import '../styles/index.css';
import { useRouter } from 'next/router';
import { pageview } from '../lib/gtag';

const MyApp: React.FC<AppProps> = ({ pageProps, Component }) => {
  const router = useRouter();
  useEffect(() => {
    const handleRouteChange = (url: string) => {
      pageview(url);
    };
    router.events.on('routeChangeComplete', handleRouteChange);
    return () => {
      router.events.off('routeChangeComplete', handleRouteChange);
    };
  }, [router.events]);
  return (
    <>
      <Component {...pageProps} />
    </>
  );
};

export default MyApp;
