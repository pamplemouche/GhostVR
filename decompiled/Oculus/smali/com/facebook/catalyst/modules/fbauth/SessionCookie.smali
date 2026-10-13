.class public Lcom/facebook/catalyst/modules/fbauth/SessionCookie;
.super Ljava/lang/Object;
.source "SessionCookie.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;
    }
.end annotation


# instance fields
.field private final mDomain:Ljava/lang/String;

.field private final mExpires:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mHttpOnly:Z

.field private final mName:Ljava/lang/String;

.field private final mPath:Ljava/lang/String;

.field private final mSecure:Z

.field private final mValue:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p1}, Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;->access$000(Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/react/bridge/SoftAssertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/catalyst/modules/fbauth/SessionCookie;->mName:Ljava/lang/String;

    .line 21
    invoke-static {p1}, Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;->access$100(Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/react/bridge/SoftAssertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/catalyst/modules/fbauth/SessionCookie;->mValue:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;->access$200(Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/catalyst/modules/fbauth/SessionCookie;->mExpires:Ljava/lang/String;

    .line 23
    invoke-static {p1}, Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;->access$300(Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/react/bridge/SoftAssertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/catalyst/modules/fbauth/SessionCookie;->mDomain:Ljava/lang/String;

    .line 24
    invoke-static {p1}, Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;->access$400(Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/catalyst/modules/fbauth/SessionCookie;->mSecure:Z

    .line 25
    invoke-static {p1}, Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;->access$500(Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/react/bridge/SoftAssertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/catalyst/modules/fbauth/SessionCookie;->mPath:Ljava/lang/String;

    .line 26
    invoke-static {p1}, Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;->access$600(Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/catalyst/modules/fbauth/SessionCookie;->mHttpOnly:Z

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;Lcom/facebook/catalyst/modules/fbauth/SessionCookie$1;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/facebook/catalyst/modules/fbauth/SessionCookie;-><init>(Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;)V

    return-void
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/catalyst/modules/fbauth/SessionCookie;->mDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getExpires()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/catalyst/modules/fbauth/SessionCookie;->mExpires:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/facebook/catalyst/modules/fbauth/SessionCookie;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/facebook/catalyst/modules/fbauth/SessionCookie;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/catalyst/modules/fbauth/SessionCookie;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public isHttpOnly()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/facebook/catalyst/modules/fbauth/SessionCookie;->mHttpOnly:Z

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/facebook/catalyst/modules/fbauth/SessionCookie;->mSecure:Z

    return v0
.end method
