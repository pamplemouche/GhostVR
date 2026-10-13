.class public final synthetic Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/-$$Lambda$VrCastControllerWrapper$Up15WpSKKTttY6SCY0p78EIVQiw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;

.field private final synthetic f$1:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/-$$Lambda$VrCastControllerWrapper$Up15WpSKKTttY6SCY0p78EIVQiw;->f$0:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/-$$Lambda$VrCastControllerWrapper$Up15WpSKKTttY6SCY0p78EIVQiw;->f$1:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/-$$Lambda$VrCastControllerWrapper$Up15WpSKKTttY6SCY0p78EIVQiw;->f$0:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/-$$Lambda$VrCastControllerWrapper$Up15WpSKKTttY6SCY0p78EIVQiw;->f$1:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/castapi/VrCastControllerWrapper;->lambda$onDeviceStateUpdated$4$VrCastControllerWrapper(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)V

    return-void
.end method
