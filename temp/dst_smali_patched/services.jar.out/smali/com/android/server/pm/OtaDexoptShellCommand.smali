.class Lcom/android/server/pm/OtaDexoptShellCommand;
.super Landroid/os/ShellCommand;
.source "OtaDexoptShellCommand.java"


# instance fields
.field final mInterface:Landroid/content/pm/IOtaDexopt;


# direct methods
.method constructor <init>(Lcom/android/server/pm/OtaDexoptService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/pm/OtaDexoptService;

    .prologue
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/OtaDexoptShellCommand;->mInterface:Landroid/content/pm/IOtaDexopt;

    return-void
.end method

.method private runOtaCleanup()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptShellCommand;->mInterface:Landroid/content/pm/IOtaDexopt;

    invoke-interface {v0}, Landroid/content/pm/IOtaDexopt;->cleanup()V

    const/4 v0, 0x0

    return v0
.end method

.method private runOtaDone()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .local v0, "pw":Ljava/io/PrintWriter;
    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptShellCommand;->mInterface:Landroid/content/pm/IOtaDexopt;

    invoke-interface {v1}, Landroid/content/pm/IOtaDexopt;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "OTA complete."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    return v1

    :cond_0
    const-string v1, "OTA incomplete."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private runOtaNext()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptShellCommand;->mInterface:Landroid/content/pm/IOtaDexopt;

    invoke-interface {v1}, Landroid/content/pm/IOtaDexopt;->nextDexoptCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private runOtaPrepare()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptShellCommand;->mInterface:Landroid/content/pm/IOtaDexopt;

    invoke-interface {v0}, Landroid/content/pm/IOtaDexopt;->prepare()V

    invoke-virtual {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Success"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private runOtaProgress()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptShellCommand;->mInterface:Landroid/content/pm/IOtaDexopt;

    invoke-interface {v2}, Landroid/content/pm/IOtaDexopt;->getProgress()F

    move-result v0

    .local v0, "progress":F
    invoke-virtual {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .local v1, "pw":Ljava/io/PrintWriter;
    const-string v2, "%.2f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v5
.end method

.method private runOtaStep()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptShellCommand;->mInterface:Landroid/content/pm/IOtaDexopt;

    invoke-interface {v0}, Landroid/content/pm/IOtaDexopt;->dexoptNextPackage()V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/server/pm/OtaDexoptShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v2

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_0
    const-string v2, "prepare"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->runOtaPrepare()I

    move-result v2

    return v2

    :cond_1
    const-string v2, "cleanup"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->runOtaCleanup()I

    move-result v2

    return v2

    :cond_2
    const-string v2, "done"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->runOtaDone()I

    move-result v2

    return v2

    :cond_3
    const-string v2, "step"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->runOtaStep()I

    move-result v2

    return v2

    :cond_4
    const-string v2, "next"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->runOtaNext()I

    move-result v2

    return v2

    :cond_5
    const-string v2, "progress"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->runOtaProgress()I

    move-result v2

    return v2

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/pm/OtaDexoptShellCommand;->handleDefaultCommands(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, -0x1

    return v2
.end method

.method public onHelp()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "OTA Dexopt (ota) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  prepare"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Prepare an OTA dexopt pass, collecting all packages."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  done"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Replies whether the OTA is complete or not."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  step"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    OTA dexopt the next package."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  next"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Get parameters for OTA dexopt of the next package."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  cleanup"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Clean up internal states. Ends an OTA session."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
