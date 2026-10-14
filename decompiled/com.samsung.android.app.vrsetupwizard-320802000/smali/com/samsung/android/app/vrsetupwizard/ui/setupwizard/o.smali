.class Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/o;
.super Lbutterknife/a/a;


# instance fields
.field final synthetic b:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/FinishActivity;

.field final synthetic c:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/FinishActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/FinishActivity_ViewBinding;Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/FinishActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/o;->c:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/FinishActivity_ViewBinding;

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/o;->b:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/FinishActivity;

    invoke-direct {p0}, Lbutterknife/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/o;->b:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/FinishActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/FinishActivity;->onClickStartLauncher()V

    return-void
.end method
