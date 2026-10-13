.class Lcom/oculus/vrshell/ShellApplication$14;
.super Ljava/lang/Object;
.source "ShellApplication.java"

# interfaces
.implements Lcom/oculus/vrshell/VrResultReceiver$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/ShellApplication;->updateCompanionServerPrefs()V
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

    .line 1438
    iput-object p1, p0, Lcom/oculus/vrshell/ShellApplication$14;->this$0:Lcom/oculus/vrshell/ShellApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateCompanionPreferencesHolder(Lcom/oculus/vrshell/config/CompanionServerPreferences;Ljava/lang/Object;)V
    .locals 0

    .line 1442
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/oculus/vrshell/config/CompanionServerPreferences;->setNuxFlow(Ljava/lang/String;)V

    return-void
.end method
