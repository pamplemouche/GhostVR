.class public Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;
.super Ljava/lang/Object;
.source "ViewerContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/auth/viewercontext/ViewerContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewerContextBuilder"
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private mAuthToken:Ljava/lang/String;

.field private mIsDittoContext:Z

.field private mIsFoxContext:Z

.field private mIsPageContext:Z

.field private mIsTimelineViewAsContext:Z

.field private mSessionCookiesString:Ljava/lang/String;

.field private mSessionKey:Ljava/lang/String;

.field private mSessionSecret:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;

.field private mUsername:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/facebook/auth/viewercontext/ViewerContext;
    .locals 2

    .prologue
    .line 484
    new-instance v0, Lcom/facebook/auth/viewercontext/ViewerContext;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/auth/viewercontext/ViewerContext;-><init>(Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;Lcom/facebook/auth/viewercontext/ViewerContext$1;)V

    return-object v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;->mAuthToken:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionCookiesString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;->mSessionCookiesString:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;->mSessionKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;->mSessionSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public isDittoContext()Z
    .locals 1

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;->mIsDittoContext:Z

    return v0
.end method

.method public isFoxContext()Z
    .locals 1

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;->mIsFoxContext:Z

    return v0
.end method

.method public isPageContext()Z
    .locals 1

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;->mIsPageContext:Z

    return v0
.end method

.method public isTimelineViewAsContext()Z
    .locals 1

    .prologue
    .line 423
    iget-boolean v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;->mIsTimelineViewAsContext:Z

    return v0
.end method

.method public setAuthToken(Ljava/lang/String;)Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;
    .locals 0
    .param p1, "authToken"    # Ljava/lang/String;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;->mAuthToken:Ljava/lang/String;

    .line 334
    return-object p0
.end method

.method public setFrom(Lcom/facebook/auth/viewercontext/ViewerContext;)Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;
    .locals 1
    .param p1, "viewerContext"    # Lcom/facebook/auth/viewercontext/ViewerContext;

    .prologue
    .line 284
    invoke-virtual {p1}, Lcom/facebook/auth/viewercontext/ViewerContext;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;->mUserId:Ljava/lang/String;

    .line 285
    invoke-virtual {p1}, Lcom/facebook/auth/viewercontext/ViewerContext;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;->mAuthToken:Ljava/lang/String;

    .line 286
    invoke-virtual {p1}, Lcom/facebook/auth/viewercontext/ViewerContext;->getSessionCookiesString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;->mSessionCookiesString:Ljava/lang/String;

    .line 287
    invoke-virtual {p1}, Lcom/facebook/auth/viewercontext/ViewerContext;->isPageContext()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;->mIsPageContext:Z

    .line 288
    invoke-virtual {p1}, Lcom/facebook/auth/viewercontext/ViewerContext;->isFoxContext()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;->mIsFoxContext:Z

    .line 289
    invoke-virtual {p1}, Lcom/facebook/auth/viewercontext/ViewerContext;->isDittoContext()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;->mIsDittoContext:Z

    .line 290
    invoke-virtual {p1}, Lcom/facebook/auth/viewercontext/ViewerContext;->isTimelineViewAsContext()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;->mIsTimelineViewAsContext:Z

    .line 291
    invoke-virtual {p1}, Lcom/facebook/auth/viewercontext/ViewerContext;->getSessionSecret()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;->mSessionSecret:Ljava/lang/String;

    .line 292
    invoke-virtual {p1}, Lcom/facebook/auth/viewercontext/ViewerContext;->getSessionKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;->mSessionKey:Ljava/lang/String;

    .line 293
    invoke-virtual {p1}, Lcom/facebook/auth/viewercontext/ViewerContext;->getUsername()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;->mUsername:Ljava/lang/String;

    .line 294
    return-object p0
.end method

.method public setIsDittoContext(Z)Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;
    .locals 0
    .param p1, "isDittoContext"    # Z

    .prologue
    .line 413
    iput-boolean p1, p0, Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;->mIsDittoContext:Z

    .line 414
    return-object p0
.end method

.method public setIsFoxContext(Z)Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;
    .locals 0
    .param p1, "isFoxContext"    # Z

    .prologue
    .line 402
    iput-boolean p1, p0, Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;->mIsFoxContext:Z

    .line 403
    return-object p0
.end method

.method public setIsPageContext(Z)Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;
    .locals 0
    .param p1, "isPageContext"    # Z

    .prologue
    .line 391
    iput-boolean p1, p0, Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;->mIsPageContext:Z

    .line 392
    return-object p0
.end method

.method public setIsTimelineViewAsContext(Z)Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;
    .locals 0
    .param p1, "isTimelineViewAsContext"    # Z

    .prologue
    .line 433
    iput-boolean p1, p0, Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;->mIsTimelineViewAsContext:Z

    .line 434
    return-object p0
.end method

.method public setSessionCookiesString(Ljava/lang/String;)Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;
    .locals 0
    .param p1, "sessionCookiesString"    # Ljava/lang/String;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;->mSessionCookiesString:Ljava/lang/String;

    .line 354
    return-object p0
.end method

.method public setSessionKey(Ljava/lang/String;)Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;
    .locals 0
    .param p1, "sessionKey"    # Ljava/lang/String;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;->mSessionKey:Ljava/lang/String;

    .line 466
    return-object p0
.end method

.method public setSessionSecret(Ljava/lang/String;)Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;
    .locals 0
    .param p1, "sessionSecret"    # Ljava/lang/String;

    .prologue
    .line 449
    iput-object p1, p0, Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;->mSessionSecret:Ljava/lang/String;

    .line 450
    return-object p0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;->mUserId:Ljava/lang/String;

    .line 314
    return-object p0
.end method

.method public setUsername(Ljava/lang/String;)Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 474
    iput-object p1, p0, Lcom/facebook/auth/viewercontext/ViewerContext$ViewerContextBuilder;->mUsername:Ljava/lang/String;

    .line 475
    return-object p0
.end method
