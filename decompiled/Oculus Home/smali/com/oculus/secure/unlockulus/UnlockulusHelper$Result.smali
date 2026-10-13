.class public Lcom/oculus/secure/unlockulus/UnlockulusHelper$Result;
.super Ljava/lang/Object;
.source "UnlockulusHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/secure/unlockulus/UnlockulusHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public final developerVRSigned:Z

.field public final firstPartyCertValid:Z

.field public final isInstalled:Z

.field public final userdev:Z


# direct methods
.method public constructor <init>(ZZZZ)V
    .locals 0
    .param p1, "isInstalled"    # Z
    .param p2, "firstPartyCertValid"    # Z
    .param p3, "developerVRSigned"    # Z
    .param p4, "userdev"    # Z

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean p1, p0, Lcom/oculus/secure/unlockulus/UnlockulusHelper$Result;->isInstalled:Z

    .line 37
    iput-boolean p2, p0, Lcom/oculus/secure/unlockulus/UnlockulusHelper$Result;->firstPartyCertValid:Z

    .line 38
    iput-boolean p3, p0, Lcom/oculus/secure/unlockulus/UnlockulusHelper$Result;->developerVRSigned:Z

    .line 39
    iput-boolean p4, p0, Lcom/oculus/secure/unlockulus/UnlockulusHelper$Result;->userdev:Z

    .line 40
    return-void
.end method


# virtual methods
.method public isUnlockulused()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/oculus/secure/unlockulus/UnlockulusHelper$Result;->userdev:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oculus/secure/unlockulus/UnlockulusHelper$Result;->isInstalled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oculus/secure/unlockulus/UnlockulusHelper$Result;->firstPartyCertValid:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oculus/secure/unlockulus/UnlockulusHelper$Result;->developerVRSigned:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 49
    const-string v0, "Result[isInstalled: %b, firstPartyCertValid: %b, developerVRSigned: %b, userdev: %b]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/oculus/secure/unlockulus/UnlockulusHelper$Result;->isInstalled:Z

    .line 51
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/oculus/secure/unlockulus/UnlockulusHelper$Result;->firstPartyCertValid:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/oculus/secure/unlockulus/UnlockulusHelper$Result;->developerVRSigned:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/oculus/secure/unlockulus/UnlockulusHelper$Result;->userdev:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 49
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
