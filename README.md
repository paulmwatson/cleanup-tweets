# Cleanup Tweets

Very simple cleanup of Tweets.

- Removes links/URLs e.g. `Lorem ipsum https://t.co/328902 doler sit amet` => `Lorem ipsum doler sit amet`
- Removes # (hashtags) e.g. `Lorem ipsum #SitAmet lorem` => `Lorem ipsum SitAmet lorem`
- Removes @ (handle) e.g. `Lorem ipsum @SitAmet lorem` => `Lorem ipsum SitAmet lorem`
- Splits Pascal Case words e.g. `Lorem ipsum SitAmet lorem` => `Lorem ipsum Sit Amet lorem`
- Replaces multiple-spaces with single spaces e.g. `Lorem ipsum   doler  sit amet` => `Lorem ipsum doler sit amet`

All together will change:
`Lorem @IpsumSit https://t.co/328902 #AmetIpsum doler  amet`
to
`Lorem Ipsum Sit Amet Ipsum doler amet`

