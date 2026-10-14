.class public final Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/d;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "appInfo"
    strict = true
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "appId"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "resultCode"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "resultMsg"
        required = false
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "versionName"
        required = false
    .end annotation
.end field

.field private e:Ljava/lang/Integer;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "versionCode"
        required = false
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "contentSize"
        required = false
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "productId"
        required = false
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "productName"
        required = false
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "downloadURI"
        required = false
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "signature"
        required = false
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "gSignatureDownloadURL"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/d;->e:Ljava/lang/Integer;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/d;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/d;->j:Ljava/lang/String;

    return-object v0
.end method
