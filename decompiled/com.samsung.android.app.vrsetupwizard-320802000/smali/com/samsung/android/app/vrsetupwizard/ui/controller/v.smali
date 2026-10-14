.class Lcom/samsung/android/app/vrsetupwizard/ui/controller/v;
.super Lbutterknife/a/a;


# instance fields
.field final synthetic b:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;

.field final synthetic c:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity_ViewBinding;Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/v;->c:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity_ViewBinding;

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/v;->b:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;

    invoke-direct {p0}, Lbutterknife/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/v;->b:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->onClickPairNewController()V

    return-void
.end method
