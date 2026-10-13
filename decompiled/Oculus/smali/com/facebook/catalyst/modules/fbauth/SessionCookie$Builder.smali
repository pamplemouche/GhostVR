.class public Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;
.super Ljava/lang/Object;
.source "SessionCookie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/catalyst/modules/fbauth/SessionCookie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDomain:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mExpires:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mHttpOnly:Z

.field private mName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mPath:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mSecure:Z

.field private mValue:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;->mExpires:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;->mDomain:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;->mSecure:Z

    return v0
.end method

.method static synthetic access$500(Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;->mHttpOnly:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/facebook/catalyst/modules/fbauth/SessionCookie;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lcom/facebook/catalyst/modules/fbauth/SessionCookie;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/catalyst/modules/fbauth/SessionCookie;-><init>(Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;Lcom/facebook/catalyst/modules/fbauth/SessionCookie$1;)V

    return-object v0
.end method

.method public setDomain(Ljava/lang/String;)Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;->mDomain:Ljava/lang/String;

    .line 84
    return-object p0
.end method

.method public setExpires(Ljava/lang/String;)Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;->mExpires:Ljava/lang/String;

    .line 79
    return-object p0
.end method

.method public setHttpOnly(Z)Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;
    .locals 0

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;->mHttpOnly:Z

    .line 99
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;->mName:Ljava/lang/String;

    .line 69
    return-object p0
.end method

.method public setPath(Ljava/lang/String;)Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;->mPath:Ljava/lang/String;

    .line 94
    return-object p0
.end method

.method public setSecure(Z)Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;
    .locals 0

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;->mSecure:Z

    .line 89
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/facebook/catalyst/modules/fbauth/SessionCookie$Builder;->mValue:Ljava/lang/String;

    .line 74
    return-object p0
.end method
