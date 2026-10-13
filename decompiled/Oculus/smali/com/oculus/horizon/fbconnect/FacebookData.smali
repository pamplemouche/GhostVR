.class public Lcom/oculus/horizon/fbconnect/FacebookData;
.super Ljava/lang/Object;
.source "FacebookData.java"


# instance fields
.field private final mAccessToken:Ljava/lang/String;

.field private final mId:Ljava/lang/String;

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/oculus/horizon/fbconnect/FacebookData;->mId:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/oculus/horizon/fbconnect/FacebookData;->mName:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/oculus/horizon/fbconnect/FacebookData;->mAccessToken:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/oculus/horizon/fbconnect/FacebookData;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/oculus/horizon/fbconnect/FacebookData;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/oculus/horizon/fbconnect/FacebookData;->mName:Ljava/lang/String;

    return-object v0
.end method
