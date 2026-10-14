.class Landroid/support/v7/widget/iy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/SeslProgressBar;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/SeslProgressBar;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/iy;->a:Landroid/support/v7/widget/SeslProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/SeslProgressBar;Landroid/support/v7/widget/ix;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/iy;-><init>(Landroid/support/v7/widget/SeslProgressBar;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/iy;->a:Landroid/support/v7/widget/SeslProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslProgressBar;->sendAccessibilityEvent(I)V

    return-void
.end method
