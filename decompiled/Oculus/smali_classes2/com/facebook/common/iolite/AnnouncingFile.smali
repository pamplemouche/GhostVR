.class public Lcom/facebook/common/iolite/AnnouncingFile;
.super Ljava/io/File;
.source "AnnouncingFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/iolite/AnnouncingFile$Listener;
    }
.end annotation


# instance fields
.field private mIsClosed:Z

.field private mIsTailing:Z

.field private mListener:Lcom/facebook/common/iolite/AnnouncingFile$Listener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# virtual methods
.method public isClosed()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/facebook/common/iolite/AnnouncingFile;->mIsClosed:Z

    return v0
.end method
