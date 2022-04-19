
const routes = [
  {
    path: '/',
    component: () => import('layouts/GameLayout.vue'),
    children: [
      { path: '', component: () => import('pages/sign/Login.vue') },
      { path: '/register', component: () => import('pages/sign/Register.vue') },
      { path: '/archive', component: () => import('pages/Archive.vue')},
      { path: '/start', component: () => import('pages/Intro.vue') },
      { path: '/identity_mode', component: () => import('pages/identity/IdentityMode.vue') },
      { path: '/identity_scale', component: () => import('pages/identity/IdentityScale.vue') },
      { path: '/identity', component: () => import('pages/identity/Identity.vue') },
      { path: '/identity_description', component: () => import('pages/identity/IdentityDescription.vue') },
      { path: '/description', component: () => import('pages/PureDescription.vue') },
      { path: '/question', component: () => import('pages/InQuestion.vue') },
      { path: '/comment', component: () => import('pages/Comment.vue')},
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
