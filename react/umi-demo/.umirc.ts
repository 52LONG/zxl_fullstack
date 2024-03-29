import { defineConfig } from 'umi';

export default defineConfig({
  nodeModulesTransform: {
    type: 'none',
  },
  routes: [
    { path: '/', component: '@/pages/index' },
    { path: '/about', component: '@/pages/about'},
    { path: '/login', component: '@/pages/login'},
  ],
  fastRefresh: {},
  antd:{},
  dva:{}
});
