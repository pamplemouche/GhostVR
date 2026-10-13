.class public Lcom/facebook/acra/AppComponentStats$Stats;
.super Ljava/lang/Object;
.source "AppComponentStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/acra/AppComponentStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stats"
.end annotation


# instance fields
.field public final defaultComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final defaultCount:I

.field public final disabledComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final disabledCount:I

.field public final enabledCount:I

.field public final flagState:I

.field public final totalCount:I


# direct methods
.method public constructor <init>(IIIIILjava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lcom/facebook/acra/AppComponentStats$Stats;->totalCount:I

    .line 53
    iput p2, p0, Lcom/facebook/acra/AppComponentStats$Stats;->enabledCount:I

    .line 54
    iput p3, p0, Lcom/facebook/acra/AppComponentStats$Stats;->disabledCount:I

    .line 55
    iput p4, p0, Lcom/facebook/acra/AppComponentStats$Stats;->defaultCount:I

    .line 56
    iput p5, p0, Lcom/facebook/acra/AppComponentStats$Stats;->flagState:I

    .line 57
    iput-object p6, p0, Lcom/facebook/acra/AppComponentStats$Stats;->disabledComponents:Ljava/util/List;

    .line 58
    iput-object p7, p0, Lcom/facebook/acra/AppComponentStats$Stats;->defaultComponents:Ljava/util/List;

    .line 59
    return-void
.end method
