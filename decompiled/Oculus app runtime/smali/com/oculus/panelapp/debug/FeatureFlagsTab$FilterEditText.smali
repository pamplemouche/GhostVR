.class public Lcom/oculus/panelapp/debug/FeatureFlagsTab$FilterEditText;
.super Landroid/widget/EditText;
.source "FeatureFlagsTab.java"

# interfaces
.implements Lcom/oculus/panelapp/debug/KeyboardHandler$KeyboardCommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/debug/FeatureFlagsTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilterEditText"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onKeyboardCommand(Ljava/lang/String;)V
    .locals 2

    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x74a1474a

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ACTION_KEY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    .line 43
    :cond_2
    invoke-virtual {p0}, Lcom/oculus/panelapp/debug/FeatureFlagsTab$FilterEditText;->clearFocus()V

    :goto_2
    return-void
.end method
