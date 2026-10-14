.class Lcom/samsung/android/app/vrsetupwizard/ui/controller/e;
.super Lbutterknife/a/a;


# instance fields
.field final synthetic b:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;

.field final synthetic c:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity_ViewBinding;Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/e;->c:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity_ViewBinding;

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/e;->b:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;

    invoke-direct {p0}, Lbutterknife/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/e;->b:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->onClickRemoveController()V

    return-void
.end method
