.class public Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity_ViewBinding;
.super Ljava/lang/Object;

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity_ViewBinding;->b:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090137

    const-string v2, "field \'mTextViewDescription\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->mTextViewDescription:Landroid/widget/TextView;

    return-void
.end method
