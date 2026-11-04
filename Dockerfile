FROM nginx:alpine

COPY index.html style.css config.js supabaseClient.js qLearningModel.js geminiAgent.js script.js /usr/share/nginx/html/

RUN sed -i 's/listen       80;/listen       9090;/; s/listen  \[::\]:80;/listen  [::]:9090;/' /etc/nginx/conf.d/default.conf

EXPOSE 9090