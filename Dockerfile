FROM alpine
env WORD nukoolm
RUN echo $MY_WORD
CMD ["echo", "hello $WORD"]
