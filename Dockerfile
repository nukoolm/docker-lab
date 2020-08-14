FROM alpine
env WORD nukoolmu
RUN echo $MY_WORD
CMD ["echo", "hello $WORD"]
