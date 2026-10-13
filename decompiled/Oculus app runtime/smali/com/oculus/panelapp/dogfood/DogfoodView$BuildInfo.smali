.class Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfo;
.super Ljava/lang/Object;
.source "DogfoodView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/dogfood/DogfoodView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BuildInfo"
.end annotation


# instance fields
.field public final label:Ljava/lang/String;

.field final synthetic this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;

.field public final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/oculus/panelapp/dogfood/DogfoodView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfo;->this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    iput-object p2, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfo;->label:Ljava/lang/String;

    .line 337
    iput-object p3, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfo;->version:Ljava/lang/String;

    return-void
.end method
