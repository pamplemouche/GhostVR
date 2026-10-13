.class abstract Lcom/oculus/horizon/widget/CustomEditText$SimpleTextWatcher;
.super Ljava/lang/Object;
.source "CustomEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/widget/CustomEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "SimpleTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/widget/CustomEditText;


# direct methods
.method private constructor <init>(Lcom/oculus/horizon/widget/CustomEditText;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/oculus/horizon/widget/CustomEditText$SimpleTextWatcher;->this$0:Lcom/oculus/horizon/widget/CustomEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/horizon/widget/CustomEditText;Lcom/oculus/horizon/widget/CustomEditText$1;)V
    .locals 0

    .prologue
    .line 431
    invoke-direct {p0, p1}, Lcom/oculus/horizon/widget/CustomEditText$SimpleTextWatcher;-><init>(Lcom/oculus/horizon/widget/CustomEditText;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 439
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 433
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 436
    return-void
.end method
