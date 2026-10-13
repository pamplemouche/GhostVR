.class Lcom/oculus/vrshell/ShellApplication$15;
.super Ljava/lang/Object;
.source "ShellApplication.java"

# interfaces
.implements Lcom/oculus/vrshell/SystemRoutesResultReciever$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/ShellApplication;->updateSystemRoutes()V
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

    .line 1468
    iput-object p1, p0, Lcom/oculus/vrshell/ShellApplication$15;->this$0:Lcom/oculus/vrshell/ShellApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateSystemRoutesHolder(Lcom/oculus/vrshell/config/SystemRoutesConfiguration;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/vrshell/config/SystemRoutesConfiguration;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1472
    invoke-virtual {p1, p2}, Lcom/oculus/vrshell/config/SystemRoutesConfiguration;->updateRoutes(Ljava/util/ArrayList;)V

    return-void
.end method
