.class Lcom/facebook/rti/common/sharedprefs/RtiSharedPreferences$EditorImpl;
.super Ljava/lang/Object;
.source "RtiSharedPreferences.java"

# interfaces
.implements Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rti/common/sharedprefs/RtiSharedPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EditorImpl"
.end annotation


# instance fields
.field mEditor:Landroid/content/SharedPreferences$Editor;

.field final synthetic this$0:Lcom/facebook/rti/common/sharedprefs/RtiSharedPreferences;


# direct methods
.method public constructor <init>(Lcom/facebook/rti/common/sharedprefs/RtiSharedPreferences;Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPreferences$EditorImpl;->this$0:Lcom/facebook/rti/common/sharedprefs/RtiSharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p2, p0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPreferences$EditorImpl;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 115
    return-void
.end method


# virtual methods
.method public clear()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPreferences$EditorImpl;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 156
    return-object p0
.end method

.method public commit()V
    .locals 2

    .prologue
    .line 161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPreferences$EditorImpl;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPreferences$EditorImpl;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public putBoolean(Ljava/lang/String;Z)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPreferences$EditorImpl;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 138
    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPreferences$EditorImpl;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 126
    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPreferences$EditorImpl;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 132
    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPreferences$EditorImpl;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 120
    return-object p0
.end method

.method public remove(Ljava/lang/String;)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPreferences$EditorImpl;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 150
    return-object p0
.end method
