.class public final Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;
.super Ljava/lang/Object;
.source "ReentrantLockFile.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/dextricks/ReentrantLockFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Lock"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/common/dextricks/ReentrantLockFile;


# direct methods
.method public constructor <init>(Lcom/facebook/common/dextricks/ReentrantLockFile;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->this$0:Lcom/facebook/common/dextricks/ReentrantLockFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->this$0:Lcom/facebook/common/dextricks/ReentrantLockFile;

    invoke-virtual {v0}, Lcom/facebook/common/dextricks/ReentrantLockFile;->release()V

    .line 160
    return-void
.end method

.method public getReentrantLockFile()Lcom/facebook/common/dextricks/ReentrantLockFile;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->this$0:Lcom/facebook/common/dextricks/ReentrantLockFile;

    return-object v0
.end method
