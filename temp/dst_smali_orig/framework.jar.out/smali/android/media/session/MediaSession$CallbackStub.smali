.class public Landroid/media/session/MediaSession$CallbackStub;
.super Landroid/media/session/ISessionCallback$Stub;
.source "MediaSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallbackStub"
.end annotation


# instance fields
.field private mMediaSession:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/media/session/MediaSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/media/session/MediaSession;)V
    .locals 1
    .param p1, "session"    # Landroid/media/session/MediaSession;

    .prologue
    invoke-direct {p0}, Landroid/media/session/ISessionCallback$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public getRemoteControlClientNowPlayingEntries()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "MediaSession"

    const-string v2, "getRemoteControlClientNowPlayingEntries in CallbackStub"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/media/session/MediaSession;->-wrap3(Landroid/media/session/MediaSession;)V

    :cond_0
    return-void
.end method

.method public onAdjustVolume(I)V
    .locals 2
    .param p1, "direction"    # I

    .prologue
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroid/media/session/MediaSession;->-wrap0(Landroid/media/session/MediaSession;I)V

    :cond_0
    return-void
.end method

.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    .prologue
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2, p3}, Landroid/media/session/MediaSession;->-wrap24(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    :cond_0
    return-void
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2}, Landroid/media/session/MediaSession;->-wrap1(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onFastForward()V
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/media/session/MediaSession;->-wrap2(Landroid/media/session/MediaSession;)V

    :cond_0
    return-void
.end method

.method public onMediaButton(Landroid/content/Intent;ILandroid/os/ResultReceiver;)V
    .locals 3
    .param p1, "mediaButtonIntent"    # Landroid/content/Intent;
    .param p2, "sequenceNumber"    # I
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    .prologue
    const/4 v2, 0x0

    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0, p1}, Landroid/media/session/MediaSession;->-wrap4(Landroid/media/session/MediaSession;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3, p2, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    if-eqz p3, :cond_2

    invoke-virtual {p3, p2, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_2
    throw v1
.end method

.method public onNext()V
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/media/session/MediaSession;->-wrap5(Landroid/media/session/MediaSession;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/media/session/MediaSession;->-wrap6(Landroid/media/session/MediaSession;)V

    :cond_0
    return-void
.end method

.method public onPlay()V
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/media/session/MediaSession;->-wrap10(Landroid/media/session/MediaSession;)V

    :cond_0
    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2}, Landroid/media/session/MediaSession;->-wrap7(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2}, Landroid/media/session/MediaSession;->-wrap8(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2}, Landroid/media/session/MediaSession;->-wrap9(Landroid/media/session/MediaSession;Landroid/net/Uri;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onPrepare()V
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/media/session/MediaSession;->-wrap14(Landroid/media/session/MediaSession;)V

    :cond_0
    return-void
.end method

.method public onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2}, Landroid/media/session/MediaSession;->-wrap11(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2}, Landroid/media/session/MediaSession;->-wrap12(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2}, Landroid/media/session/MediaSession;->-wrap13(Landroid/media/session/MediaSession;Landroid/net/Uri;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onPrevious()V
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/media/session/MediaSession;->-wrap15(Landroid/media/session/MediaSession;)V

    :cond_0
    return-void
.end method

.method public onRate(Landroid/media/Rating;)V
    .locals 2
    .param p1, "rating"    # Landroid/media/Rating;

    .prologue
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroid/media/session/MediaSession;->-wrap16(Landroid/media/session/MediaSession;Landroid/media/Rating;)V

    :cond_0
    return-void
.end method

.method public onRewind()V
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/media/session/MediaSession;->-wrap17(Landroid/media/session/MediaSession;)V

    :cond_0
    return-void
.end method

.method public onSeekTo(J)V
    .locals 3
    .param p1, "pos"    # J

    .prologue
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2}, Landroid/media/session/MediaSession;->-wrap18(Landroid/media/session/MediaSession;J)V

    :cond_0
    return-void
.end method

.method public onSetVolumeTo(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroid/media/session/MediaSession;->-wrap21(Landroid/media/session/MediaSession;I)V

    :cond_0
    return-void
.end method

.method public onSkipToTrack(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2}, Landroid/media/session/MediaSession;->-wrap22(Landroid/media/session/MediaSession;J)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/media/session/MediaSession;->-wrap23(Landroid/media/session/MediaSession;)V

    :cond_0
    return-void
.end method

.method public setRemoteControlClientBrowsedPlayer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "MediaSession"

    const-string v2, "setRemoteControlClientBrowsedPlayer in CallbackStub"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/media/session/MediaSession;->-wrap19(Landroid/media/session/MediaSession;)V

    :cond_0
    return-void
.end method

.method public setRemoteControlClientPlayItem(JI)V
    .locals 3
    .param p1, "uid"    # J
    .param p3, "scope"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "MediaSession"

    const-string v2, "setRemoteControlClientPlayItem in CallbackStub"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2, p3}, Landroid/media/session/MediaSession;->-wrap20(Landroid/media/session/MediaSession;JI)V

    :cond_0
    return-void
.end method
