.class public final Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/t;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "result"
    strict = false
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/d;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        inline = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/t;->a:Ljava/util/List;

    return-object v0
.end method
