.class Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/e;->b:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    iput p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/e;->b:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->i(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/e;->a:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->a(IZ)V

    return-void
.end method
