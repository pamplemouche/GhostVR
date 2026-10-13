.class Lcom/oculus/localmedia/server/LocalMediaServer$2;
.super Ljava/io/FileInputStream;
.source "LocalMediaServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/localmedia/server/LocalMediaServer;->outputRangeContent(Ljava/io/PrintStream;Ljava/io/File;Ljava/lang/String;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/localmedia/server/LocalMediaServer;

.field final synthetic val$dataLen:J


# direct methods
.method constructor <init>(Lcom/oculus/localmedia/server/LocalMediaServer;Ljava/io/File;J)V
    .locals 1

    .prologue
    .line 354
    iput-object p1, p0, Lcom/oculus/localmedia/server/LocalMediaServer$2;->this$0:Lcom/oculus/localmedia/server/LocalMediaServer;

    iput-wide p3, p0, Lcom/oculus/localmedia/server/LocalMediaServer$2;->val$dataLen:J

    invoke-direct {p0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    iget-wide v0, p0, Lcom/oculus/localmedia/server/LocalMediaServer$2;->val$dataLen:J

    long-to-int v0, v0

    return v0
.end method
