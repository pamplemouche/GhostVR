.class public Lcom/oculus/browser/acra/util/HttpRequest$StringPostEntity;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/oculus/browser/acra/util/HttpRequest$PostEntity;


# instance fields
.field public final mData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/oculus/browser/acra/util/HttpRequest$StringPostEntity;->mData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/acra/util/HttpRequest$StringPostEntity;->mData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
