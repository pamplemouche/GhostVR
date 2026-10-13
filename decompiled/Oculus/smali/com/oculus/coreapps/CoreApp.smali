.class public Lcom/oculus/coreapps/CoreApp;
.super Ljava/lang/Object;
.source "CoreApp.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/coreapps/CoreApp$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/oculus/coreapps/CoreApp;",
        ">;"
    }
.end annotation


# instance fields
.field public final entry:Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;

.field public final status:Lcom/oculus/coreapps/CoreApp$Status;


# direct methods
.method public constructor <init>(Lcom/oculus/coreapps/CoreApp;Lcom/oculus/coreapps/CoreApp$Status;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iget-object v0, p1, Lcom/oculus/coreapps/CoreApp;->entry:Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;

    iput-object v0, p0, Lcom/oculus/coreapps/CoreApp;->entry:Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;

    .line 38
    iput-object p2, p0, Lcom/oculus/coreapps/CoreApp;->status:Lcom/oculus/coreapps/CoreApp$Status;

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/oculus/coreapps/CoreApp;->entry:Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;

    .line 33
    sget-object v0, Lcom/oculus/coreapps/CoreApp$Status;->UNKNOWN:Lcom/oculus/coreapps/CoreApp$Status;

    iput-object v0, p0, Lcom/oculus/coreapps/CoreApp;->status:Lcom/oculus/coreapps/CoreApp$Status;

    .line 34
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/oculus/coreapps/CoreApp;)I
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/oculus/coreapps/CoreApp;->entry:Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;->display_name:Ljava/lang/String;

    iget-object v1, p1, Lcom/oculus/coreapps/CoreApp;->entry:Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;->display_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 16
    check-cast p1, Lcom/oculus/coreapps/CoreApp;

    invoke-virtual {p0, p1}, Lcom/oculus/coreapps/CoreApp;->compareTo(Lcom/oculus/coreapps/CoreApp;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 91
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 95
    :cond_1
    check-cast p1, Lcom/oculus/coreapps/CoreApp;

    .line 97
    iget-object v1, p0, Lcom/oculus/coreapps/CoreApp;->status:Lcom/oculus/coreapps/CoreApp$Status;

    iget-object v2, p1, Lcom/oculus/coreapps/CoreApp;->status:Lcom/oculus/coreapps/CoreApp$Status;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/oculus/coreapps/CoreApp;->entry:Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;

    iget-object v2, p1, Lcom/oculus/coreapps/CoreApp;->entry:Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getStatusString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oculus/coreapps/CoreApp;->status:Lcom/oculus/coreapps/CoreApp$Status;

    invoke-virtual {v0}, Lcom/oculus/coreapps/CoreApp$Status;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 86
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oculus/coreapps/CoreApp;->status:Lcom/oculus/coreapps/CoreApp$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/oculus/coreapps/CoreApp;->entry:Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/facebook/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/oculus/coreapps/CoreApp;->status:Lcom/oculus/coreapps/CoreApp$Status;

    sget-object v1, Lcom/oculus/coreapps/CoreApp$Status;->UP_TO_DATE:Lcom/oculus/coreapps/CoreApp$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/oculus/coreapps/CoreApp;->status:Lcom/oculus/coreapps/CoreApp$Status;

    sget-object v1, Lcom/oculus/coreapps/CoreApp$Status;->DOWNLOAD_FAILED:Lcom/oculus/coreapps/CoreApp$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/oculus/coreapps/CoreApp;->status:Lcom/oculus/coreapps/CoreApp$Status;

    sget-object v1, Lcom/oculus/coreapps/CoreApp$Status;->INSTALL_FAILED:Lcom/oculus/coreapps/CoreApp$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/oculus/coreapps/CoreApp;->status:Lcom/oculus/coreapps/CoreApp$Status;

    sget-object v1, Lcom/oculus/coreapps/CoreApp$Status;->INSTALL_SUCCESS:Lcom/oculus/coreapps/CoreApp$Status;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oculus/coreapps/CoreApp;->status:Lcom/oculus/coreapps/CoreApp$Status;

    sget-object v1, Lcom/oculus/coreapps/CoreApp$Status;->IN_PROGRESS:Lcom/oculus/coreapps/CoreApp$Status;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/oculus/coreapps/CoreApp;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDownloadFail()Lcom/oculus/coreapps/CoreApp;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Lcom/oculus/coreapps/CoreApp;

    sget-object v1, Lcom/oculus/coreapps/CoreApp$Status;->DOWNLOAD_FAILED:Lcom/oculus/coreapps/CoreApp$Status;

    invoke-direct {v0, p0, v1}, Lcom/oculus/coreapps/CoreApp;-><init>(Lcom/oculus/coreapps/CoreApp;Lcom/oculus/coreapps/CoreApp$Status;)V

    return-object v0
.end method

.method public onDownloadStart()Lcom/oculus/coreapps/CoreApp;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lcom/oculus/coreapps/CoreApp;

    sget-object v1, Lcom/oculus/coreapps/CoreApp$Status;->IN_PROGRESS:Lcom/oculus/coreapps/CoreApp$Status;

    invoke-direct {v0, p0, v1}, Lcom/oculus/coreapps/CoreApp;-><init>(Lcom/oculus/coreapps/CoreApp;Lcom/oculus/coreapps/CoreApp$Status;)V

    return-object v0
.end method

.method public onDownloadSuccess()Lcom/oculus/coreapps/CoreApp;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lcom/oculus/coreapps/CoreApp;

    iget-object v1, p0, Lcom/oculus/coreapps/CoreApp;->status:Lcom/oculus/coreapps/CoreApp$Status;

    invoke-direct {v0, p0, v1}, Lcom/oculus/coreapps/CoreApp;-><init>(Lcom/oculus/coreapps/CoreApp;Lcom/oculus/coreapps/CoreApp$Status;)V

    return-object v0
.end method

.method public onInstallFail()Lcom/oculus/coreapps/CoreApp;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lcom/oculus/coreapps/CoreApp;

    sget-object v1, Lcom/oculus/coreapps/CoreApp$Status;->INSTALL_FAILED:Lcom/oculus/coreapps/CoreApp$Status;

    invoke-direct {v0, p0, v1}, Lcom/oculus/coreapps/CoreApp;-><init>(Lcom/oculus/coreapps/CoreApp;Lcom/oculus/coreapps/CoreApp$Status;)V

    return-object v0
.end method

.method public onInstallSuccess()Lcom/oculus/coreapps/CoreApp;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lcom/oculus/coreapps/CoreApp;

    sget-object v1, Lcom/oculus/coreapps/CoreApp$Status;->INSTALL_SUCCESS:Lcom/oculus/coreapps/CoreApp$Status;

    invoke-direct {v0, p0, v1}, Lcom/oculus/coreapps/CoreApp;-><init>(Lcom/oculus/coreapps/CoreApp;Lcom/oculus/coreapps/CoreApp$Status;)V

    return-object v0
.end method

.method public onNeedsInstall()Lcom/oculus/coreapps/CoreApp;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lcom/oculus/coreapps/CoreApp;

    sget-object v1, Lcom/oculus/coreapps/CoreApp$Status;->NEEDS_INSTALL:Lcom/oculus/coreapps/CoreApp$Status;

    invoke-direct {v0, p0, v1}, Lcom/oculus/coreapps/CoreApp;-><init>(Lcom/oculus/coreapps/CoreApp;Lcom/oculus/coreapps/CoreApp$Status;)V

    return-object v0
.end method

.method public onUpToDate()Lcom/oculus/coreapps/CoreApp;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/oculus/coreapps/CoreApp;

    sget-object v1, Lcom/oculus/coreapps/CoreApp$Status;->UP_TO_DATE:Lcom/oculus/coreapps/CoreApp$Status;

    invoke-direct {v0, p0, v1}, Lcom/oculus/coreapps/CoreApp;-><init>(Lcom/oculus/coreapps/CoreApp;Lcom/oculus/coreapps/CoreApp$Status;)V

    return-object v0
.end method
