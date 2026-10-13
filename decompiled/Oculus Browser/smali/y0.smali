.class public Ly0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lq0;


# instance fields
.field public final w:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ly0;->w:Landroid/support/v4/view/ViewPager;

    return-void
.end method


# virtual methods
.method public a(Lv0;)V
    .locals 0

    return-void
.end method

.method public b(Lv0;)V
    .locals 0

    return-void
.end method

.method public c(Lv0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ly0;->w:Landroid/support/v4/view/ViewPager;

    .line 2
    iget p1, p1, Lv0;->d:I

    .line 3
    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->f(I)V

    return-void
.end method
