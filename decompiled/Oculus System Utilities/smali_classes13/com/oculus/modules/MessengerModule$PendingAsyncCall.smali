.class Lcom/oculus/modules/MessengerModule$PendingAsyncCall;
.super Ljava/lang/Object;
.source "MessengerModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/MessengerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingAsyncCall"
.end annotation


# instance fields
.field public rejectId:I

.field public resolveId:I

.field final synthetic this$0:Lcom/oculus/modules/MessengerModule;

.field public timeoutToken:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/oculus/modules/MessengerModule;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/oculus/modules/MessengerModule$PendingAsyncCall;->this$0:Lcom/oculus/modules/MessengerModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/modules/MessengerModule;Lcom/oculus/modules/MessengerModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oculus/modules/MessengerModule;
    .param p2, "x1"    # Lcom/oculus/modules/MessengerModule$1;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/oculus/modules/MessengerModule$PendingAsyncCall;-><init>(Lcom/oculus/modules/MessengerModule;)V

    return-void
.end method
