.class Lcom/oculus/horizon/bluetooth/MalibuPresenter$2;
.super Ljava/lang/Object;
.source "MalibuPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/bluetooth/MalibuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/bluetooth/MalibuPresenter;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/bluetooth/MalibuPresenter;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/oculus/horizon/bluetooth/MalibuPresenter$2;->this$0:Lcom/oculus/horizon/bluetooth/MalibuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/MalibuPresenter$2;->this$0:Lcom/oculus/horizon/bluetooth/MalibuPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/bluetooth/MalibuPresenter;->access$200(Lcom/oculus/horizon/bluetooth/MalibuPresenter;)V

    .line 78
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/MalibuPresenter$2;->this$0:Lcom/oculus/horizon/bluetooth/MalibuPresenter;

    sget-object v1, Lcom/oculus/horizon/bluetooth/MalibuPresenter$State;->DISCOVER:Lcom/oculus/horizon/bluetooth/MalibuPresenter$State;

    invoke-static {v0, v1}, Lcom/oculus/horizon/bluetooth/MalibuPresenter;->access$300(Lcom/oculus/horizon/bluetooth/MalibuPresenter;Lcom/oculus/horizon/bluetooth/MalibuPresenter$State;)V

    .line 79
    return-void
.end method
