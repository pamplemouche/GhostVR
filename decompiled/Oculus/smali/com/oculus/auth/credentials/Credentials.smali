.class public Lcom/oculus/auth/credentials/Credentials;
.super Ljava/lang/Object;
.source "Credentials.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final mAccessToken:Ljava/lang/String;

.field private final mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/oculus/auth/credentials/Credentials;->mUserId:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/oculus/auth/credentials/Credentials;->mAccessToken:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oculus/auth/credentials/Credentials;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oculus/auth/credentials/Credentials;->mUserId:Ljava/lang/String;

    return-object v0
.end method
