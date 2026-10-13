.class public Lcom/oculus/panelapp/anytimeui/SocialActivityData;
.super Ljava/lang/Object;
.source "SocialActivityData.java"


# instance fields
.field public final deeplink:Ljava/lang/String;

.field public final imageUri:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final subtitle:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/SocialActivityData;->title:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/SocialActivityData;->subtitle:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/oculus/panelapp/anytimeui/SocialActivityData;->imageUri:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/oculus/panelapp/anytimeui/SocialActivityData;->packageName:Ljava/lang/String;

    .line 20
    iput-object p5, p0, Lcom/oculus/panelapp/anytimeui/SocialActivityData;->deeplink:Ljava/lang/String;

    return-void
.end method
