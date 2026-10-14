.class public final Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/ab;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "package"
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "name"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "packagename"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "downloadURL"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "filesize"
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

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/ab;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/ab;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/ab;->d:Ljava/lang/String;

    return-object v0
.end method
