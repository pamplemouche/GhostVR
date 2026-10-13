.class public abstract LH3;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:LG3;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LH3;->b:Z

    return-void
.end method


# virtual methods
.method public abstract a(LC3;)V
.end method

.method public b(LC3;)Landroid/widget/RemoteViews;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public c(LC3;)Landroid/widget/RemoteViews;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
