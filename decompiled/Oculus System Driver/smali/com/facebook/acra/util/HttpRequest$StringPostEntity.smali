.class public Lcom/facebook/acra/util/HttpRequest$StringPostEntity;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Lcom/facebook/acra/util/HttpRequest$PostEntity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/acra/util/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringPostEntity"
.end annotation


# instance fields
.field private final mData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/facebook/acra/util/HttpRequest$StringPostEntity;->mData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/facebook/acra/util/HttpRequest$StringPostEntity;->mData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
