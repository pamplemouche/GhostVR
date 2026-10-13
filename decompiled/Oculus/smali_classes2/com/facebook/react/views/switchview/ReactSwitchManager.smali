.class public Lcom/facebook/react/views/switchview/ReactSwitchManager;
.super Lcom/facebook/react/uimanager/SimpleViewManager;
.source "ReactSwitchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/switchview/ReactSwitchManager$ReactSwitchShadowNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/SimpleViewManager",
        "<",
        "Lcom/facebook/react/views/switchview/ReactSwitch;",
        ">;"
    }
.end annotation


# static fields
.field private static final ON_CHECKED_CHANGE_LISTENER:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/facebook/react/views/switchview/ReactSwitchManager$1;

    invoke-direct {v0}, Lcom/facebook/react/views/switchview/ReactSwitchManager$1;-><init>()V

    sput-object v0, Lcom/facebook/react/views/switchview/ReactSwitchManager;->ON_CHECKED_CHANGE_LISTENER:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/facebook/react/uimanager/SimpleViewManager;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 27
    check-cast p2, Lcom/facebook/react/views/switchview/ReactSwitch;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/switchview/ReactSwitchManager;->addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/views/switchview/ReactSwitch;)V

    return-void
.end method

.method protected addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/views/switchview/ReactSwitch;)V
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lcom/facebook/react/views/switchview/ReactSwitchManager;->ON_CHECKED_CHANGE_LISTENER:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p2, v0}, Lcom/facebook/react/views/switchview/ReactSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 155
    return-void
.end method

.method public createShadowNodeInstance()Lcom/facebook/react/uimanager/LayoutShadowNode;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Lcom/facebook/react/views/switchview/ReactSwitchManager$ReactSwitchShadowNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/views/switchview/ReactSwitchManager$ReactSwitchShadowNode;-><init>(Lcom/facebook/react/views/switchview/ReactSwitchManager$1;)V

    return-object v0
.end method

.method public bridge synthetic createShadowNodeInstance()Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/facebook/react/views/switchview/ReactSwitchManager;->createShadowNodeInstance()Lcom/facebook/react/uimanager/LayoutShadowNode;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/switchview/ReactSwitchManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/switchview/ReactSwitch;

    move-result-object v0

    return-object v0
.end method

.method protected createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/switchview/ReactSwitch;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lcom/facebook/react/views/switchview/ReactSwitch;

    invoke-direct {v0, p1}, Lcom/facebook/react/views/switchview/ReactSwitch;-><init>(Landroid/content/Context;)V

    .line 99
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/react/views/switchview/ReactSwitch;->setShowText(Z)V

    .line 100
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, "AndroidSwitch"

    return-object v0
.end method

.method public getShadowNodeClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 93
    const-class v0, Lcom/facebook/react/views/switchview/ReactSwitchManager$ReactSwitchShadowNode;

    return-object v0
.end method

.method public setDisabled(Lcom/facebook/react/views/switchview/ReactSwitch;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "disabled"
    .end annotation

    .prologue
    .line 105
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/switchview/ReactSwitch;->setEnabled(Z)V

    .line 106
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnabled(Lcom/facebook/react/views/switchview/ReactSwitch;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = true
        name = "enabled"
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/switchview/ReactSwitch;->setEnabled(Z)V

    .line 111
    return-void
.end method

.method public setOn(Lcom/facebook/react/views/switchview/ReactSwitch;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "on"
    .end annotation

    .prologue
    .line 115
    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/switchview/ReactSwitchManager;->setValue(Lcom/facebook/react/views/switchview/ReactSwitch;Z)V

    .line 116
    return-void
.end method

.method public setThumbColor(Lcom/facebook/react/views/switchview/ReactSwitch;Ljava/lang/Integer;)V
    .locals 0
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "thumbColor"
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/switchview/ReactSwitch;->setThumbColor(Ljava/lang/Integer;)V

    .line 135
    return-void
.end method

.method public setThumbTintColor(Lcom/facebook/react/views/switchview/ReactSwitch;Ljava/lang/Integer;)V
    .locals 0
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "thumbTintColor"
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/switchview/ReactSwitchManager;->setThumbColor(Lcom/facebook/react/views/switchview/ReactSwitch;Ljava/lang/Integer;)V

    .line 130
    return-void
.end method

.method public setTrackColorForFalse(Lcom/facebook/react/views/switchview/ReactSwitch;Ljava/lang/Integer;)V
    .locals 0
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "trackColorForFalse"
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/switchview/ReactSwitch;->setTrackColorForFalse(Ljava/lang/Integer;)V

    .line 140
    return-void
.end method

.method public setTrackColorForTrue(Lcom/facebook/react/views/switchview/ReactSwitch;Ljava/lang/Integer;)V
    .locals 0
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "trackColorForTrue"
    .end annotation

    .prologue
    .line 144
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/switchview/ReactSwitch;->setTrackColorForTrue(Ljava/lang/Integer;)V

    .line 145
    return-void
.end method

.method public setTrackTintColor(Lcom/facebook/react/views/switchview/ReactSwitch;Ljava/lang/Integer;)V
    .locals 0
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "trackTintColor"
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/switchview/ReactSwitch;->setTrackColor(Ljava/lang/Integer;)V

    .line 150
    return-void
.end method

.method public setValue(Lcom/facebook/react/views/switchview/ReactSwitch;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "value"
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/switchview/ReactSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 123
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/switchview/ReactSwitch;->setOn(Z)V

    .line 124
    sget-object v0, Lcom/facebook/react/views/switchview/ReactSwitchManager;->ON_CHECKED_CHANGE_LISTENER:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/switchview/ReactSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 125
    return-void
.end method
