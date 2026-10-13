.class public LE7;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .locals 0

    .line 1
    iput-object p1, p0, LE7;->w:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, LE7;->w:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->g(I)V

    .line 2
    iget-object v0, p0, LE7;->w:Landroid/support/v4/view/ViewPager;

    .line 3
    iget v1, v0, Landroid/support/v4/view/ViewPager;->B:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->e(I)V

    return-void
.end method
