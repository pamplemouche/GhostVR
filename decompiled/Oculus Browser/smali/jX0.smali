.class public LjX0;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# instance fields
.field public final synthetic a:LkX0;


# direct methods
.method public constructor <init>(LkX0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LjX0;->a:LkX0;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, LjX0;->a:LkX0;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p2

    .line 2
    iput-object p2, p1, LkX0;->W:Ljava/lang/String;

    return-void
.end method
