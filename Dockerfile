FROM alpine
env WORD
RUN echo $MY_WORD
CMD ["echo", "hello $WORD"]
