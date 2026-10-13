.class Lcom/oculus/vrshell/ShellApplication$7;
.super Landroid/os/storage/OnObbStateChangeListener;
.source "ShellApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/ShellApplication;->mountObb(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/ShellApplication;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/ShellApplication;)V
    .locals 0

    .line 1092
    iput-object p1, p0, Lcom/oculus/vrshell/ShellApplication$7;->this$0:Lcom/oculus/vrshell/ShellApplication;

    invoke-direct {p0}, Landroid/os/storage/OnObbStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onObbStateChange(Ljava/lang/String;I)V
    .locals 0

    .line 1095
    invoke-super {p0, p1, p2}, Landroid/os/storage/OnObbStateChangeListener;->onObbStateChange(Ljava/lang/String;I)V

    return-void
.end method
