.class Landroid/support/v4/app/bb;
.super Landroid/transition/Transition$EpicenterCallback;


# instance fields
.field final synthetic a:Landroid/graphics/Rect;

.field final synthetic b:Landroid/support/v4/app/ba;


# direct methods
.method constructor <init>(Landroid/support/v4/app/ba;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/bb;->b:Landroid/support/v4/app/ba;

    iput-object p2, p0, Landroid/support/v4/app/bb;->a:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .locals 0

    iget-object p1, p0, Landroid/support/v4/app/bb;->a:Landroid/graphics/Rect;

    return-object p1
.end method
