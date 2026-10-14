.class Landroid/support/v7/widget/is;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public a:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/is;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ig;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/is;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/is;->a:Z

    const/4 v0, 0x1

    return v0
.end method
