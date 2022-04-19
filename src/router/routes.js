
const routes = [
  {
    path: '/',
    component: () => import('layouts/GameLayout.vue'),
    children: [
      { path: '', component: () => import('pages/Login.vue') },
      { path: '/register', component: () => import('pages/Register.vue') },
      { path: '/archive', component: () => import('pages/Archive.vue')},
      { path: '/start', component: () => import('pages/Intro.vue') },
      { path: '/identity_mode', component: () => import('pages/IdentityMode.vue') },
      { path: '/identity_scale', component: () => import('pages/IdentityScale.vue') },
      { path: '/identity', component: () => import('pages/Identity.vue') },
      { path: '/identity_description', component: () => import('pages/IdentityDescription.vue') },
      { path: '/description', component: () => import('pages/PureDescription.vue') },
      { path: '/question', component: () => import('pages/InQuestion.vue') },
      { path: '/end', component: () => import('pages/End.vue') }
    ]
  },

  // Always leave this as last one,
  // but you can also remove it
  {
    path: '/:catchAll(.*)*',
    component: () => import('pages/Error404.vue')
  }
]

export default routes
