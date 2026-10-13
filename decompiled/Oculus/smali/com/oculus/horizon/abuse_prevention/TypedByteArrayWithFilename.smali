.class public Lcom/oculus/horizon/abuse_prevention/TypedByteArrayWithFilename;
.super Lretrofit/mime/TypedByteArray;
.source "TypedByteArrayWithFilename.java"

# interfaces
.implements Lretrofit/mime/TypedInput;
.implements Lretrofit/mime/TypedOutput;


# instance fields
.field private final fileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lretrofit/mime/TypedByteArray;-><init>(Ljava/lang/String;[B)V

    .line 21
    iput-object p3, p0, Lcom/oculus/horizon/abuse_prevention/TypedByteArrayWithFilename;->fileName:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public fileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/oculus/horizon/abuse_prevention/TypedByteArrayWithFilename;->fileName:Ljava/lang/String;

    return-object v0
.end method
