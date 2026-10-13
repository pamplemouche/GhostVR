.class Lcom/oculus/panelapp/dogfood/DogfoodView$3;
.super Ljava/lang/Object;
.source "DogfoodView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/dogfood/DogfoodView;->populatePackages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/dogfood/DogfoodView;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$3;->this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 149
    invoke-static {}, Lcom/oculus/panelapp/dogfood/DogfoodView;->access$200()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 150
    iget-object v4, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$3;->this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;

    invoke-static {v4}, Lcom/oculus/panelapp/dogfood/DogfoodView;->access$400(Lcom/oculus/panelapp/dogfood/DogfoodView;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$3;->this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;

    invoke-static {v5, v3}, Lcom/oculus/panelapp/dogfood/DogfoodView;->access$300(Lcom/oculus/panelapp/dogfood/DogfoodView;Ljava/lang/String;)Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfo;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
