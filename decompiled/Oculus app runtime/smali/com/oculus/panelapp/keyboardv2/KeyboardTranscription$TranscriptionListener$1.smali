.class Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription$TranscriptionListener$1;
.super Ljava/lang/Object;
.source "KeyboardTranscription.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription$TranscriptionListener;->onTranscriptionChanged(Ljava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription$TranscriptionListener;

.field final synthetic val$isPartial:Z

.field final synthetic val$transcription:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription$TranscriptionListener;Ljava/lang/String;Z)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription$TranscriptionListener$1;->this$1:Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription$TranscriptionListener;

    iput-object p2, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription$TranscriptionListener$1;->val$transcription:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription$TranscriptionListener$1;->val$isPartial:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription$TranscriptionListener$1;->this$1:Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription$TranscriptionListener;

    iget-object v0, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription$TranscriptionListener;->this$0:Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;

    invoke-static {v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;->access$200(Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;)Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription$TranscriptionListener$1;->val$transcription:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription$TranscriptionListener$1;->val$isPartial:Z

    invoke-virtual {v0, v1, v2}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->updateTranscription(Ljava/lang/String;Z)V

    return-void
.end method
