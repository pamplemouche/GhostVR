.class public Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;
.super Ljava/lang/Object;
.source "DetailsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/pdp/widget/DetailsView$Detail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mLabel:Ljava/lang/CharSequence;

.field private mValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;->mValues:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addValue(Ljava/lang/String;)Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;->mValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    return-object p0
.end method

.method public addValues(Ljava/util/List;)Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;->mValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 86
    return-object p0
.end method

.method public build()Lcom/oculus/horizon/pdp/widget/DetailsView$Detail;
    .locals 3

    .prologue
    .line 90
    new-instance v0, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;->mLabel:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;->mValues:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    return-object v0
.end method

.method public label(Ljava/lang/CharSequence;)Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;->mLabel:Ljava/lang/CharSequence;

    .line 76
    return-object p0
.end method
